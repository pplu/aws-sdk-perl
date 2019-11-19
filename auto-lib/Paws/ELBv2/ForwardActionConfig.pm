# Generated from default/object.tt
package Paws::ELBv2::ForwardActionConfig;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::ELBv2::Types qw/ELBv2_TargetGroupStickinessConfig ELBv2_TargetGroupTuple/;
  has TargetGroups => (is => 'ro', isa => ArrayRef[ELBv2_TargetGroupTuple]);
  has TargetGroupStickinessConfig => (is => 'ro', isa => ELBv2_TargetGroupStickinessConfig);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TargetGroupStickinessConfig' => {
                                                  'class' => 'Paws::ELBv2::TargetGroupStickinessConfig',
                                                  'type' => 'ELBv2_TargetGroupStickinessConfig'
                                                },
               'TargetGroups' => {
                                   'type' => 'ArrayRef[ELBv2_TargetGroupTuple]',
                                   'class' => 'Paws::ELBv2::TargetGroupTuple'
                                 }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::ForwardActionConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ELBv2::ForwardActionConfig object:

  $service_obj->Method(Att1 => { TargetGroups => $value, ..., TargetGroupStickinessConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ELBv2::ForwardActionConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->TargetGroups

=head1 DESCRIPTION

Information about a forward action.

=head1 ATTRIBUTES


=head2 TargetGroups => ArrayRef[ELBv2_TargetGroupTuple]

  One or more target groups. For Network Load Balancers, you can specify
a single target group.


=head2 TargetGroupStickinessConfig => ELBv2_TargetGroupStickinessConfig

  The target group stickiness for the rule.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

