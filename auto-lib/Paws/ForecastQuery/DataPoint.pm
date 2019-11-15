package Paws::ForecastQuery::DataPoint;
  use Moose;
  has Timestamp => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Num');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ForecastQuery::DataPoint

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ForecastQuery::DataPoint object:

  $service_obj->Method(Att1 => { Timestamp => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ForecastQuery::DataPoint object:

  $result = $service_obj->Method(...);
  $result->Att1->Timestamp

=head1 DESCRIPTION

The forecast value for a specific date. Part of the Forecast object.

=head1 ATTRIBUTES


=head2 Timestamp => Str

  The timestamp of the specific forecast.


=head2 Value => Num

  The forecast value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ForecastQuery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

