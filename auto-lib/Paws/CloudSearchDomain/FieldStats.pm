package Paws::CloudSearchDomain::FieldStats;
  use Moose;
  has Count => (is => 'ro', isa => 'Int', request_name => 'count', traits => ['NameInRequest']);
  has Max => (is => 'ro', isa => 'Str', request_name => 'max', traits => ['NameInRequest']);
  has Mean => (is => 'ro', isa => 'Str', request_name => 'mean', traits => ['NameInRequest']);
  has Min => (is => 'ro', isa => 'Str', request_name => 'min', traits => ['NameInRequest']);
  has Missing => (is => 'ro', isa => 'Int', request_name => 'missing', traits => ['NameInRequest']);
  has Stddev => (is => 'ro', isa => 'Num', request_name => 'stddev', traits => ['NameInRequest']);
  has Sum => (is => 'ro', isa => 'Num', request_name => 'sum', traits => ['NameInRequest']);
  has SumOfSquares => (is => 'ro', isa => 'Num', request_name => 'sumOfSquares', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearchDomain::FieldStats

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudSearchDomain::FieldStats object:

  $service_obj->Method(Att1 => { Count => $value, ..., SumOfSquares => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudSearchDomain::FieldStats object:

  $result = $service_obj->Method(...);
  $result->Att1->Count

=head1 DESCRIPTION

The statistics for a field calculated in the request.

=head1 ATTRIBUTES


=head2 Count => Int

  The number of documents that contain a value in the specified field in
the result set.


=head2 Max => Str

  The maximum value found in the specified field in the result set.

If the field is numeric (C<int>, C<int-array>, C<double>, or
C<double-array>), C<max> is the string representation of a
double-precision 64-bit floating point value. If the field is C<date>
or C<date-array>, C<max> is the string representation of a date with
the format specified in IETF RFC3339
(http://tools.ietf.org/html/rfc3339): yyyy-mm-ddTHH:mm:ss.SSSZ.


=head2 Mean => Str

  The average of the values found in the specified field in the result
set.

If the field is numeric (C<int>, C<int-array>, C<double>, or
C<double-array>), C<mean> is the string representation of a
double-precision 64-bit floating point value. If the field is C<date>
or C<date-array>, C<mean> is the string representation of a date with
the format specified in IETF RFC3339
(http://tools.ietf.org/html/rfc3339): yyyy-mm-ddTHH:mm:ss.SSSZ.


=head2 Min => Str

  The minimum value found in the specified field in the result set.

If the field is numeric (C<int>, C<int-array>, C<double>, or
C<double-array>), C<min> is the string representation of a
double-precision 64-bit floating point value. If the field is C<date>
or C<date-array>, C<min> is the string representation of a date with
the format specified in IETF RFC3339
(http://tools.ietf.org/html/rfc3339): yyyy-mm-ddTHH:mm:ss.SSSZ.


=head2 Missing => Int

  The number of documents that do not contain a value in the specified
field in the result set.


=head2 Stddev => Num

  The standard deviation of the values in the specified field in the
result set.


=head2 Sum => Num

  The sum of the field values across the documents in the result set.
C<null> for date fields.


=head2 SumOfSquares => Num

  The sum of all field values in the result set squared.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudSearchDomain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

