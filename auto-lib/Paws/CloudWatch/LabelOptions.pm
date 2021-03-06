# Generated by default/object.tt
package Paws::CloudWatch::LabelOptions;
  use Moose;
  has Timezone => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::LabelOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatch::LabelOptions object:

  $service_obj->Method(Att1 => { Timezone => $value, ..., Timezone => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatch::LabelOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->Timezone

=head1 DESCRIPTION

This structure includes the C<Timezone> parameter, which you can use to
specify your time zone so that the labels that are associated with
returned metrics display the correct time for your time zone.

The C<Timezone> value affects a label only if you have a time-based
dynamic expression in the label. For more information about dynamic
expressions in labels, see Using Dynamic Labels
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/graph-dynamic-labels.html).

=head1 ATTRIBUTES


=head2 Timezone => Str

The time zone to use for metric data return in this operation. The
format is C<+> or C<-> followed by four digits. The first two digits
indicate the number of hours ahead or behind of UTC, and the final two
digits are the number of minutes. For example, +0130 indicates a time
zone that is 1 hour and 30 minutes ahead of UTC. The default is +0000.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

