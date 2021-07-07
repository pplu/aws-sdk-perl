
package Paws::Proton::DeleteServiceTemplateVersionOutput;
  use Moose;
  has ServiceTemplateVersion => (is => 'ro', isa => 'Paws::Proton::ServiceTemplateVersion', traits => ['NameInRequest'], request_name => 'serviceTemplateVersion' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Proton::DeleteServiceTemplateVersionOutput

=head1 ATTRIBUTES


=head2 ServiceTemplateVersion => L<Paws::Proton::ServiceTemplateVersion>

The service template version detail data that's returned by AWS Proton.


=head2 _request_id => Str


=cut

1;