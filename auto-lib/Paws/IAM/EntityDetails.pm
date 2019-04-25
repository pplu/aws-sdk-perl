package Paws::IAM::EntityDetails;
  use Moose;
  has EntityInfo => (is => 'ro', isa => 'Paws::IAM::EntityInfo', required => 1);
  has LastAuthenticated => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::EntityDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IAM::EntityDetails object:

  $service_obj->Method(Att1 => { EntityInfo => $value, ..., LastAuthenticated => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IAM::EntityDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->EntityInfo

=head1 DESCRIPTION

An object that contains details about when the IAM entities (users or
roles) were last used in an attempt to access the specified AWS
service.

This data type is a response element in the
GetServiceLastAccessedDetailsWithEntities operation.

=head1 ATTRIBUTES


=head2 B<REQUIRED> EntityInfo => L<Paws::IAM::EntityInfo>

  The C<EntityInfo> object that contains details about the entity (user
or role).


=head2 LastAuthenticated => Str

  The date and time, in ISO 8601 date-time format
(http://www.iso.org/iso/iso8601), when the authenticated entity last
attempted to access AWS. AWS does not report unauthenticated requests.

This field is null if no IAM entities attempted to access the service
within the reporting period
(http://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

