
package Paws::S3Control::GetAccessPointConfigurationForObjectLambdaResult;
  use Moose;
  has Configuration => (is => 'ro', isa => 'Paws::S3Control::ObjectLambdaConfiguration');


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::GetAccessPointConfigurationForObjectLambdaResult

=head1 ATTRIBUTES


=head2 Configuration => L<Paws::S3Control::ObjectLambdaConfiguration>

Object Lambda Access Point configuration document.




=cut

