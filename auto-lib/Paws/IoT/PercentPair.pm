package Paws::IoT::PercentPair;
  use Moose;
  has Percent => (is => 'ro', isa => 'Num', request_name => 'percent', traits => ['NameInRequest']);
  has Value => (is => 'ro', isa => 'Num', request_name => 'value', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::PercentPair

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::PercentPair object:

  $service_obj->Method(Att1 => { Percent => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::PercentPair object:

  $result = $service_obj->Method(...);
  $result->Att1->Percent

=head1 DESCRIPTION

Describes the percentile and percentile value.

=head1 ATTRIBUTES


=head2 Percent => Num

  The percentile.


=head2 Value => Num

  The value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

