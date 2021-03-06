# Generated by default/object.tt
package Paws::SSM::OpsItemEventSummary;
  use Moose;
  has CreatedBy => (is => 'ro', isa => 'Paws::SSM::OpsItemIdentity');
  has CreatedTime => (is => 'ro', isa => 'Str');
  has Detail => (is => 'ro', isa => 'Str');
  has DetailType => (is => 'ro', isa => 'Str');
  has EventId => (is => 'ro', isa => 'Str');
  has OpsItemId => (is => 'ro', isa => 'Str');
  has Source => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::OpsItemEventSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::OpsItemEventSummary object:

  $service_obj->Method(Att1 => { CreatedBy => $value, ..., Source => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::OpsItemEventSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedBy

=head1 DESCRIPTION

Summary information about an OpsItem event or that associated an
OpsItem with a related item.

=head1 ATTRIBUTES


=head2 CreatedBy => L<Paws::SSM::OpsItemIdentity>

Information about the user or resource that created the OpsItem event.


=head2 CreatedTime => Str

The date and time the OpsItem event was created.


=head2 Detail => Str

Specific information about the OpsItem event.


=head2 DetailType => Str

The type of information provided as a detail.


=head2 EventId => Str

The ID of the OpsItem event.


=head2 OpsItemId => Str

The ID of the OpsItem.


=head2 Source => Str

The source of the OpsItem event.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

