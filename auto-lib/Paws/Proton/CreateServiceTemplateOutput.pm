
package Paws::Proton::CreateServiceTemplateOutput;
  use Moose;
  has ServiceTemplate => (is => 'ro', isa => 'Paws::Proton::ServiceTemplate', traits => ['NameInRequest'], request_name => 'serviceTemplate' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Proton::CreateServiceTemplateOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ServiceTemplate => L<Paws::Proton::ServiceTemplate>

The service template detail data that's returned by AWS Proton.


=head2 _request_id => Str


=cut

1;