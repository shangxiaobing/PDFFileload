//
//  FirstViewController.m
//  PDFFileload
//
//  Created by YXZT on 16/10/17.
//  Copyright © 2016年 YXZT. All rights reserved.
//

#import "FirstViewController.h"
#import "TiledPDFView.h"

@interface FirstViewController ()
{
    TiledPDFView *pdfView;
    UIScrollView *scrollView;
    CGFloat pdfScale;
    CGPDFPageRef page;
    CGPDFDocumentRef pdf;
    UIToolbar *_toolbar;
    NSInteger _pageNumber;
    NSInteger _pageCount;
    NSInteger maxpage;
}
@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor cyanColor];
    
    //pdf文件路径
    NSURL *pdfURL = [[NSBundle mainBundle] URLForResource:self.fileName withExtension:nil];
    pdf = CGPDFDocumentCreateWithURL((CFURLRef) pdfURL);
    _pageCount = CGPDFDocumentGetNumberOfPages(pdf);
    _pageNumber = 0;
    
    NSInteger height = Main_Screen_Height-64;
    scrollView = [[UIScrollView alloc] initWithFrame: CGRectMake(0, 64, Main_Screen_Width, height)];
    scrollView.contentSize= CGSizeMake(Main_Screen_Width*_pageCount, 0);
    scrollView.pagingEnabled = YES;
    scrollView.backgroundColor = [UIColor whiteColor];
    scrollView.showsHorizontalScrollIndicator = NO;
    [self.view addSubview:scrollView];

    dispatch_async(dispatch_get_global_queue(0, 0), ^{
    });
    
    for (int i = 0; i<_pageCount; i++) {
        _pageNumber ++;
        page = CGPDFDocumentGetPage(pdf, _pageNumber);
        CGPDFPageRetain(page);
        CGRect pageRect = CGPDFPageGetBoxRect(page, kCGPDFMediaBox);
        pdfScale = Main_Screen_Width/height;
        pageRect.size = CGSizeMake(pageRect.size.width*pdfScale, pageRect.size.height*pdfScale);
        pdfView = [[TiledPDFView alloc] initWithFrame:CGRectMake(Main_Screen_Width*(_pageNumber-1), -64, Main_Screen_Width, height) andScale:pdfScale];
        pdfView.backgroundColor = [UIColor cyanColor];
        [pdfView setPage:page];
        
        [scrollView addSubview:pdfView];
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    NSLog(@"MemoryWarning");
}



@end
