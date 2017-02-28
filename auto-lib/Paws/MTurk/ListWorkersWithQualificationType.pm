
package Paws::MTurk::ListWorkersWithQualificationType;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has QualificationTypeId => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListWorkersWithQualificationType');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MTurk::ListWorkersWithQualificationTypeResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::ListWorkersWithQualificationType - Arguments for method ListWorkersWithQualificationType on Paws::MTurk

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListWorkersWithQualificationType on the 
Amazon Mechanical Turk service. Use the attributes of this class
as arguments to method ListWorkersWithQualificationType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListWorkersWithQualificationType.

As an example:

  $service_obj->ListWorkersWithQualificationType(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 MaxResults => Int

Limit the number of results returned.



=head2 NextToken => Str

Pagination Token



=head2 B<REQUIRED> QualificationTypeId => Str

The ID of the Qualification type of the Qualifications to return.



=head2 Status => Str

The status of the Qualifications to return. Can be C<Granted |
Revoked>.

Valid values are: C<"Granted">, C<"Revoked">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListWorkersWithQualificationType in L<Paws::MTurk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

