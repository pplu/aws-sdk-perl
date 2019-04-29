package Paws::Chime::PhoneNumber;
  use Moose;
  has Associations => (is => 'ro', isa => 'ArrayRef[Paws::Chime::PhoneNumberAssociation]');
  has Capabilities => (is => 'ro', isa => 'Paws::Chime::PhoneNumberCapabilities');
  has CreatedTimestamp => (is => 'ro', isa => 'Str');
  has DeletionTimestamp => (is => 'ro', isa => 'Str');
  has E164PhoneNumber => (is => 'ro', isa => 'Str');
  has PhoneNumberId => (is => 'ro', isa => 'Str');
  has ProductType => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has UpdatedTimestamp => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::PhoneNumber

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Chime::PhoneNumber object:

  $service_obj->Method(Att1 => { Associations => $value, ..., UpdatedTimestamp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Chime::PhoneNumber object:

  $result = $service_obj->Method(...);
  $result->Att1->Associations

=head1 DESCRIPTION

A phone number used for Amazon Chime Business Calling or an Amazon
Chime Voice Connector.

=head1 ATTRIBUTES


=head2 Associations => ArrayRef[L<Paws::Chime::PhoneNumberAssociation>]

  The phone number associations.


=head2 Capabilities => L<Paws::Chime::PhoneNumberCapabilities>

  The phone number capabilities.


=head2 CreatedTimestamp => Str

  The phone number creation timestamp, in ISO 8601 format.


=head2 DeletionTimestamp => Str

  The deleted phone number timestamp, in ISO 8601 format.


=head2 E164PhoneNumber => Str

  The phone number, in E.164 format.


=head2 PhoneNumberId => Str

  The phone number ID.


=head2 ProductType => Str

  The phone number product type.


=head2 Status => Str

  The phone number status.


=head2 UpdatedTimestamp => Str

  The updated phone number timestamp, in ISO 8601 format.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

