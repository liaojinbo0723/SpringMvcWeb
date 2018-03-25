package com.neo.datamanager.util;

public class Page {

    int start = 0;//首页
    int count = 10;//每页显示多少条数据
    int last = 0;//末页
    int totalCnt = 0;//总记录条数
    int pageCnt = 0;//总页数
    int curCnt = 0;//当前页数

    public int getCurCnt() {
        return curCnt;
    }

    public void setCurCnt(int curCnt) {
        this.curCnt = curCnt;
    }

    public int getPageCnt() {
        return pageCnt;
    }

    public void setPageCnt(int pageCnt) {
        this.pageCnt = pageCnt;
    }

    public int getTotalCnt() {
        return totalCnt;
    }

    public void setTotalCnt(int totalCnt) {
        this.totalCnt = totalCnt;
    }

    public int getStart() {
        return start;
    }

    public void setStart(int start) {
        this.start = start;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public int getLast() {
        return last;
    }

    public void setLast(int last) {
        this.last = last;
    }

    public void caculateLast(int total) {
        totalCnt = total;
        curCnt = start/count + 1;
        if (0 == total % count) {
            last = total - count;
            pageCnt = total / count;
        }
        else {
            last = total - total % count;
            pageCnt = total / count + 1;
        }
    }

}
