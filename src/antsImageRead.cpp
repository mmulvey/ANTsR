#include <vector>
#include <string>
#include <RcppANTsR.h>
#include "itkNiftiImageIOFactory.h"
#include "itkMetaImageIOFactory.h"
#include "itkImageFileReader.h"
#include "itkImage.h"


template< class ImageType >
SEXP antsImageRead( std::string filename, std::string pixeltype, unsigned int components )
{
  typedef typename ImageType::Pointer           ImagePointerType;
  typedef itk::ImageFileReader< ImageType >     ImageReaderType;

  typename ImageReaderType::Pointer image_reader = ImageReaderType::New() ;
  image_reader->SetFileName( filename.c_str() ) ;
  try
    {
    image_reader->Update();
    }
  catch( itk::ExceptionObject & e )
    {
    Rcpp::Rcout << "Exception caught during reference file reading " << e << std::endl;
    return NULL;
    }

  ImagePointerType itkImage = image_reader->GetOutput();
  return Rcpp::wrap( itkImage );
}


// [[myRcpp::export]]
RcppExport SEXP antsImageRead( SEXP r_filename , SEXP r_pixeltype , SEXP r_dimension, SEXP r_components )
try
{
  // check and set the parameters
  if( r_filename == NULL || r_pixeltype == NULL ||
      r_dimension == NULL || r_components == NULL )
    {
    Rcpp::stop("Unspecified Arguments");
    }

  std::string filename = Rcpp::as< std::string >( r_filename );
  std::string pixeltype = Rcpp::as< std::string >( r_pixeltype );
  unsigned int dimension = Rcpp::as< unsigned int >( r_dimension );
  unsigned int components = Rcpp::as<unsigned int >( r_components );

  if( pixeltype == "double" )
   {
   typedef double ValueType;
   if( dimension == 4 )
     {
     typedef itk::Image<ValueType,4>       ImageType;
     typedef itk::VectorImage<ValueType,4> VectorImageType;

     return (components==1) ?
       antsImageRead<ImageType>( filename, pixeltype, components ) :
       antsImageRead<VectorImageType>( filename, pixeltype, components );
     }
   else if( dimension == 3 )
     {
     typedef itk::Image<ValueType,3>       ImageType;
     typedef itk::VectorImage<ValueType,3> VectorImageType;

     return (components==1) ?
       antsImageRead<ImageType>( filename, pixeltype, components ) :
       antsImageRead<VectorImageType>( filename, pixeltype, components );
     }
   else if( dimension == 2 )
     {
     typedef itk::Image<ValueType,2>       ImageType;
     typedef itk::VectorImage<ValueType,2> VectorImageType;

     return (components==1) ?
       antsImageRead<ImageType>( filename, pixeltype, components ) :
       antsImageRead<VectorImageType>( filename, pixeltype, components );
     }
   }
  else if( pixeltype == "float" )
   {
   typedef float ValueType;
   if( dimension == 4 )
     {
     typedef itk::Image<ValueType,4>       ImageType;
     typedef itk::VectorImage<ValueType,4> VectorImageType;

     return (components==1) ?
       antsImageRead<ImageType>( filename, pixeltype, components ) :
       antsImageRead<VectorImageType>( filename, pixeltype, components );
     }
   else if( dimension == 3 )
     {
     typedef itk::Image<ValueType,3>       ImageType;
     typedef itk::VectorImage<ValueType,3> VectorImageType;

     return (components==1) ?
       antsImageRead<ImageType>( filename, pixeltype, components ) :
       antsImageRead<VectorImageType>( filename, pixeltype, components );
     }
   else if( dimension == 2 )
     {
     typedef itk::Image<ValueType,2>       ImageType;
     typedef itk::VectorImage<ValueType,2> VectorImageType;

     return (components==1) ?
       antsImageRead<ImageType>( filename, pixeltype, components ) :
       antsImageRead<VectorImageType>( filename, pixeltype, components );
     }
   }
  else if( pixeltype == "unsigned int" )
   {
   typedef unsigned int ValueType;
   if( dimension == 4 )
     {
     typedef itk::Image<ValueType,4>       ImageType;
     typedef itk::VectorImage<ValueType,4> VectorImageType;

     return (components==1) ?
       antsImageRead<ImageType>( filename, pixeltype, components ) :
       antsImageRead<VectorImageType>( filename, pixeltype, components );
     }
   else if( dimension == 3 )
     {
     typedef itk::Image<ValueType,3>       ImageType;
     typedef itk::VectorImage<ValueType,3> VectorImageType;

     return (components==1) ?
       antsImageRead<ImageType>( filename, pixeltype, components ) :
       antsImageRead<VectorImageType>( filename, pixeltype, components );
     }
   else if( dimension == 2 )
     {
     typedef itk::Image<ValueType,2>       ImageType;
     typedef itk::VectorImage<ValueType,2> VectorImageType;

     return (components==1) ?
       antsImageRead<ImageType>( filename, pixeltype, components ) :
       antsImageRead<VectorImageType>( filename, pixeltype, components );
     }
   }
  else if( pixeltype == "unsigned char" )
   {
   typedef unsigned char ValueType;
   if( dimension == 4 )
     {
     typedef itk::Image<ValueType,4>       ImageType;
     typedef itk::VectorImage<ValueType,4> VectorImageType;

     return (components==1) ?
       antsImageRead<ImageType>( filename, pixeltype, components ) :
       antsImageRead<VectorImageType>( filename, pixeltype, components );
     }
   else if( dimension == 3 )
     {
     typedef itk::Image<ValueType,3>       ImageType;
     typedef itk::VectorImage<ValueType,3> VectorImageType;

     return (components==1) ?
       antsImageRead<ImageType>( filename, pixeltype, components ) :
       antsImageRead<VectorImageType>( filename, pixeltype, components );
     }
   else if( dimension == 2 )
     {
     typedef itk::Image<ValueType,2>       ImageType;
     typedef itk::VectorImage<ValueType,2> VectorImageType;

     return (components==1) ?
       antsImageRead<ImageType>( filename, pixeltype, components ) :
       antsImageRead<VectorImageType>( filename, pixeltype, components );
     }
   }
  else
    {
    Rcpp::stop("Unsupported PixelType");
    }
}
catch( itk::ExceptionObject & err )
  {
  Rcpp::Rcout << "ITK ExceptionObject caught !" << std::endl;
  Rcpp::Rcout << err << std::endl;
  Rcpp::stop("ITK exception caught");
  }
catch( const std::exception& exc )
  {
  Rcpp::Rcout << "STD ExceptionObject caught !" << std::endl;
  Rcpp::Rcout << exc.what() << std::endl ;
  Rcpp::stop( "Exception caught");
  }
