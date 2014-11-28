package Paws::S3::CORSRule {
  use Moose;
  has AllowedHeaders => (is => 'ro', isa => 'ArrayRef[Str]');
  has AllowedMethods => (is => 'ro', isa => 'ArrayRef[Str]');
  has AllowedOrigins => (is => 'ro', isa => 'ArrayRef[Str]');
  has ExposeHeaders => (is => 'ro', isa => 'ArrayRef[Str]');
  has MaxAgeSeconds => (is => 'ro', isa => 'Int');
}
1;
