package Aws::S3::CORSRule {
  use Moose;
  has AllowedHeaders => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['Unwrapped'], xmlname => 'AllowedHeader');
  has AllowedMethods => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['Unwrapped'], xmlname => 'AllowedMethod');
  has AllowedOrigins => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['Unwrapped'], xmlname => 'AllowedOrigin');
  has ExposeHeaders => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['Unwrapped'], xmlname => 'ExposeHeader');
  has MaxAgeSeconds => (is => 'ro', isa => 'Int');
}
1
