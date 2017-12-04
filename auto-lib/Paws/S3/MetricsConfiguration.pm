package Paws::S3::MetricsConfiguration;
  use Moose;
  has Filter => (is => 'ro', isa => 'Paws::S3::MetricsFilter');
  has Id => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::MetricsConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::MetricsConfiguration object:

  $service_obj->Method(Att1 => { Filter => $value, ..., Id => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::MetricsConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Filter

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Filter => L<Paws::S3::MetricsFilter>

  Specifies a metrics configuration filter. The metrics configuration
will only include objects that meet the filter's criteria. A filter
must be a prefix, a tag, or a conjunction (MetricsAndOperator).


=head2 B<REQUIRED> Id => Str

  The ID used to identify the metrics configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

