# Generated by default/object.tt
package Paws::Glue::StringColumnStatisticsData;
  use Moose;
  has AverageLength => (is => 'ro', isa => 'Num', required => 1);
  has MaximumLength => (is => 'ro', isa => 'Int', required => 1);
  has NumberOfDistinctValues => (is => 'ro', isa => 'Int', required => 1);
  has NumberOfNulls => (is => 'ro', isa => 'Int', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::StringColumnStatisticsData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::StringColumnStatisticsData object:

  $service_obj->Method(Att1 => { AverageLength => $value, ..., NumberOfNulls => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::StringColumnStatisticsData object:

  $result = $service_obj->Method(...);
  $result->Att1->AverageLength

=head1 DESCRIPTION

Defines column statistics supported for character sequence data values.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AverageLength => Num

The average string length in the column.


=head2 B<REQUIRED> MaximumLength => Int

The size of the longest string in the column.


=head2 B<REQUIRED> NumberOfDistinctValues => Int

The number of distinct values in a column.


=head2 B<REQUIRED> NumberOfNulls => Int

The number of null values in the column.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

