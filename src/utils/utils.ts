import IP2Region from 'ip2region';
import { Context } from 'koa';
import * as useragent from 'useragent';

export const getIp = (ctx: Context) => {
  const ips =
    (ctx.req.headers['x-forwarded-for'] as string) ||
    (ctx.req.headers['X-Real-IP'] as string) ||
    (ctx.req.socket.remoteAddress.replace('::ffff:', '') as string);

  console.log(ips, 'ips');

  if (Array.isArray(ips)) {
    return ips?.[0];
  }

  return ips;
};

export const getAddressByIp = (ip: string): string => {
  if (!ip) return '';

  const query = new IP2Region();
  const res = query.search(ip);
  return [res.province, res.city].join(' ');
};

export const getUserAgent = (ctx: Context): useragent.Agent => {
  return useragent.parse(ctx.headers['user-agent'] as string);
};
