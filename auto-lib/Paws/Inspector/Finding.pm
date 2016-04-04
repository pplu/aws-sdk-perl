package Paws::Inspector::Finding;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', xmlname => 'arn', request_name => 'arn', traits => ['Unwrapped','NameInRequest'], required => 1);
  has AssetAttributes => (is => 'ro', isa => 'Paws::Inspector::AssetAttributes', xmlname => 'assetAttributes', request_name => 'assetAttributes', traits => ['Unwrapped','NameInRequest']);
  has AssetType => (is => 'ro', isa => 'Str', xmlname => 'assetType', request_name => 'assetType', traits => ['Unwrapped','NameInRequest']);
  has Attributes => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::Attribute]', xmlname => 'attributes', request_name => 'attributes', traits => ['Unwrapped','NameInRequest'], required => 1);
  has Confidence => (is => 'ro', isa => 'Int', xmlname => 'confidence', request_name => 'confidence', traits => ['Unwrapped','NameInRequest']);
  has CreatedAt => (is => 'ro', isa => 'Paws::API::TimeStamp', xmlname => 'createdAt', request_name => 'createdAt', traits => ['Unwrapped','NameInRequest'], required => 1);
  has Description => (is => 'ro', isa => 'Str', xmlname => 'description', request_name => 'description', traits => ['Unwrapped','NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', xmlname => 'id', request_name => 'id', traits => ['Unwrapped','NameInRequest']);
  has IndicatorOfCompromise => (is => 'ro', isa => 'Bool', xmlname => 'indicatorOfCompromise', request_name => 'indicatorOfCompromise', traits => ['Unwrapped','NameInRequest']);
  has NumericSeverity => (is => 'ro', isa => 'Num', xmlname => 'numericSeverity', request_name => 'numericSeverity', traits => ['Unwrapped','NameInRequest']);
  has Recommendation => (is => 'ro', isa => 'Str', xmlname => 'recommendation', request_name => 'recommendation', traits => ['Unwrapped','NameInRequest']);
  has SchemaVersion => (is => 'ro', isa => 'Int', xmlname => 'schemaVersion', request_name => 'schemaVersion', traits => ['Unwrapped','NameInRequest']);
  has Service => (is => 'ro', isa => 'Str', xmlname => 'service', request_name => 'service', traits => ['Unwrapped','NameInRequest']);
  has ServiceAttributes => (is => 'ro', isa => 'Paws::Inspector::InspectorServiceAttributes', xmlname => 'serviceAttributes', request_name => 'serviceAttributes', traits => ['Unwrapped','NameInRequest']);
  has Severity => (is => 'ro', isa => 'Str', xmlname => 'severity', request_name => 'severity', traits => ['Unwrapped','NameInRequest']);
  has Title => (is => 'ro', isa => 'Str', xmlname => 'title', request_name => 'title', traits => ['Unwrapped','NameInRequest']);
  has UpdatedAt => (is => 'ro', isa => 'Paws::API::TimeStamp', xmlname => 'updatedAt', request_name => 'updatedAt', traits => ['Unwrapped','NameInRequest'], required => 1);
  has UserAttributes => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::Attribute]', xmlname => 'userAttributes', request_name => 'userAttributes', traits => ['Unwrapped','NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::Finding

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Inspector::Finding object:

  $service_obj->Method(Att1 => { Arn => $value, ..., UserAttributes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector::Finding object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Contains information about an Inspector finding. This data type is used
as the response element in the DescribeFindings action.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

  The ARN specifying the finding.


=head2 AssetAttributes => L<Paws::Inspector::AssetAttributes>

  A collection of attributes of the host from which the finding is
generated.


=head2 AssetType => Str

  The type of the host from which the finding is generated.


=head2 B<REQUIRED> Attributes => ArrayRef[L<Paws::Inspector::Attribute>]

  The system-defined attributes for the finding.


=head2 Confidence => Int

  This data element is currently not used.


=head2 B<REQUIRED> CreatedAt => L<Paws::API::TimeStamp>

  The time when the finding was generated.


=head2 Description => Str

  The description of the finding.


=head2 Id => Str

  The ID of the finding.


=head2 IndicatorOfCompromise => Bool

  This data element is currently not used.


=head2 NumericSeverity => Num

  The numeric value of the finding severity.


=head2 Recommendation => Str

  The recommendation for the finding.


=head2 SchemaVersion => Int

  The schema version of this data type.


=head2 Service => Str

  The data element is set to "Inspector".


=head2 ServiceAttributes => L<Paws::Inspector::InspectorServiceAttributes>

  


=head2 Severity => Str

  The finding severity. Values can be set to High, Medium, Low, and
Informational.


=head2 Title => Str

  The name of the finding.


=head2 B<REQUIRED> UpdatedAt => L<Paws::API::TimeStamp>

  The time when AddAttributesToFindings API is called.


=head2 B<REQUIRED> UserAttributes => ArrayRef[L<Paws::Inspector::Attribute>]

  The user-defined attributes that are assigned to the finding.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

