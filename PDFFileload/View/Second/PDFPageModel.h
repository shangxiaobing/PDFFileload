//
//  ZPDFPageModel.h
//  pdfReader
//
//  Created by YXZT on 16/10/17.
//  Copyright © 2016年 YXZT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIPageViewController.h>

@class PDFPageController;

@interface PDFPageModel : NSObject <UIPageViewControllerDataSource>
{
    CGPDFDocumentRef pdfDocument;
}
//@property (assign, nonatomic) CGPDFDocumentRef pdfDocument;
//@property (strong, nonatomic) NSArray *pageContent;
-(id) initWithPDFDocument:(CGPDFDocumentRef) pdfDocument;

- (PDFPageController *)viewControllerAtIndex:(NSUInteger)index;
- (NSUInteger)indexOfViewController:(PDFPageController *)viewController;
@end
