# Generated from default/object.tt
package Paws::EMR::ScalingTrigger;
  use Moo;
  use Types::Standard qw//;
  use Paws::EMR::Types qw/EMR_CloudWatchAlarmDefinition/;
  has CloudWatchAlarmDefinition => (is => 'ro', isa => EMR_CloudWatchAlarmDefinition, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CloudWatchAlarmDefinition' => {
                                                'class' => 'Paws::EMR::CloudWatchAlarmDefinition',
                                                'type' => 'EMR_CloudWatchAlarmDefinition'
                                              }
             },
  'IsRequired' => {
                    'CloudWatchAlarmDefinition' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::ScalingTrigger

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::ScalingTrigger object:

  $service_obj->Method(Att1 => { CloudWatchAlarmDefinition => $value, ..., CloudWatchAlarmDefinition => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::ScalingTrigger object:

  $result = $service_obj->Method(...);
  $result->Att1->CloudWatchAlarmDefinition

=head1 DESCRIPTION

The conditions that trigger an automatic scaling activity.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CloudWatchAlarmDefinition => EMR_CloudWatchAlarmDefinition

  The definition of a CloudWatch metric alarm. When the defined alarm
conditions are met along with other trigger parameters, scaling
activity begins.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

