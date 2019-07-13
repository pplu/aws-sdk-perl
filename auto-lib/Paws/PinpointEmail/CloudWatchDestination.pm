package Paws::PinpointEmail::CloudWatchDestination;
  use Moose;
  has DimensionConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::PinpointEmail::CloudWatchDimensionConfiguration]', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::CloudWatchDestination

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PinpointEmail::CloudWatchDestination object:

  $service_obj->Method(Att1 => { DimensionConfigurations => $value, ..., DimensionConfigurations => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PinpointEmail::CloudWatchDestination object:

  $result = $service_obj->Method(...);
  $result->Att1->DimensionConfigurations

=head1 DESCRIPTION

An object that defines an Amazon CloudWatch destination for email
events. You can use Amazon CloudWatch to monitor and gain insights on
your email sending metrics.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DimensionConfigurations => ArrayRef[L<Paws::PinpointEmail::CloudWatchDimensionConfiguration>]

  An array of objects that define the dimensions to use when you send
email events to Amazon CloudWatch.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PinpointEmail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

