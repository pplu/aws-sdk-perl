
package Paws::ServiceCatalogAppRegistry::DisassociateResourceResponse;
  use Moose;
  has ApplicationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationArn');
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceArn');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalogAppRegistry::DisassociateResourceResponse

=head1 ATTRIBUTES


=head2 ApplicationArn => Str

The Amazon resource name (ARN) that specifies the application.


=head2 ResourceArn => Str

The Amazon resource name (ARN) that specifies the resource.


=head2 _request_id => Str


=cut

