//
//  ZPDFView.h
//  pdfReader
//
//  Created by YXZT on 16/10/17.
//  Copyright © 2016年 YXZT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PDFView : UIView {
    CGPDFDocumentRef pdfDocument;
    int pageNO;
}

-(id)initWithFrame:(CGRect)frame atPage:(int)index withPDFDoc:(CGPDFDocumentRef) pdfDoc;

@end
