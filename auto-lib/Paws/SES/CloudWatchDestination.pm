package Paws::SES::CloudWatchDestination;
  use Moose;
  has DimensionConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::SES::CloudWatchDimensionConfiguration]', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::CloudWatchDestination

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SES::CloudWatchDestination object:

  $service_obj->Method(Att1 => { DimensionConfigurations => $value, ..., DimensionConfigurations => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SES::CloudWatchDestination object:

  $result = $service_obj->Method(...);
  $result->Att1->DimensionConfigurations

=head1 DESCRIPTION

Contains information associated with an Amazon CloudWatch event
destination to which email sending events are published.

Event destinations, such as Amazon CloudWatch, are associated with
configuration sets, which enable you to publish email sending events.
For information about using configuration sets, see the Amazon SES
Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html).

=head1 ATTRIBUTES


=head2 B<REQUIRED> DimensionConfigurations => ArrayRef[L<Paws::SES::CloudWatchDimensionConfiguration>]

  A list of dimensions upon which to categorize your emails when you
publish email sending events to Amazon CloudWatch.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

