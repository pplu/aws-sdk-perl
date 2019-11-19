# Generated from default/object.tt
package Paws::AutoScaling::TargetTrackingConfiguration;
  use Moo;
  use Types::Standard qw/Bool Num/;
  use Paws::AutoScaling::Types qw/AutoScaling_CustomizedMetricSpecification AutoScaling_PredefinedMetricSpecification/;
  has CustomizedMetricSpecification => (is => 'ro', isa => AutoScaling_CustomizedMetricSpecification);
  has DisableScaleIn => (is => 'ro', isa => Bool);
  has PredefinedMetricSpecification => (is => 'ro', isa => AutoScaling_PredefinedMetricSpecification);
  has TargetValue => (is => 'ro', isa => Num, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TargetValue' => {
                                  'type' => 'Num'
                                },
               'DisableScaleIn' => {
                                     'type' => 'Bool'
                                   },
               'PredefinedMetricSpecification' => {
                                                    'class' => 'Paws::AutoScaling::PredefinedMetricSpecification',
                                                    'type' => 'AutoScaling_PredefinedMetricSpecification'
                                                  },
               'CustomizedMetricSpecification' => {
                                                    'class' => 'Paws::AutoScaling::CustomizedMetricSpecification',
                                                    'type' => 'AutoScaling_CustomizedMetricSpecification'
                                                  }
             },
  'IsRequired' => {
                    'TargetValue' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::TargetTrackingConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AutoScaling::TargetTrackingConfiguration object:

  $service_obj->Method(Att1 => { CustomizedMetricSpecification => $value, ..., TargetValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AutoScaling::TargetTrackingConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->CustomizedMetricSpecification

=head1 DESCRIPTION

Represents a target tracking scaling policy configuration to use with
Amazon EC2 Auto Scaling.

=head1 ATTRIBUTES


=head2 CustomizedMetricSpecification => AutoScaling_CustomizedMetricSpecification

  A customized metric. You must specify either a predefined metric or a
customized metric.


=head2 DisableScaleIn => Bool

  Indicates whether scaling in by the target tracking scaling policy is
disabled. If scaling in is disabled, the target tracking scaling policy
doesn't remove instances from the Auto Scaling group. Otherwise, the
target tracking scaling policy can remove instances from the Auto
Scaling group. The default is C<false>.


=head2 PredefinedMetricSpecification => AutoScaling_PredefinedMetricSpecification

  A predefined metric. You must specify either a predefined metric or a
customized metric.


=head2 B<REQUIRED> TargetValue => Num

  The target value for the metric.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

