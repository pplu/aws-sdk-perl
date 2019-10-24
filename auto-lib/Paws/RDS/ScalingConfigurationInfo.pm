# Generated from default/object.tt
package Paws::RDS::ScalingConfigurationInfo;
  use Moo;
  use Types::Standard qw/Bool Int Str/;
  use Paws::RDS::Types qw//;
  has AutoPause => (is => 'ro', isa => Bool);
  has MaxCapacity => (is => 'ro', isa => Int);
  has MinCapacity => (is => 'ro', isa => Int);
  has SecondsUntilAutoPause => (is => 'ro', isa => Int);
  has TimeoutAction => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AutoPause' => {
                                'type' => 'Bool'
                              },
               'SecondsUntilAutoPause' => {
                                            'type' => 'Int'
                                          },
               'MinCapacity' => {
                                  'type' => 'Int'
                                },
               'MaxCapacity' => {
                                  'type' => 'Int'
                                },
               'TimeoutAction' => {
                                    'type' => 'Str'
                                  }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::ScalingConfigurationInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::ScalingConfigurationInfo object:

  $service_obj->Method(Att1 => { AutoPause => $value, ..., TimeoutAction => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::ScalingConfigurationInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->AutoPause

=head1 DESCRIPTION

Shows the scaling configuration for an Aurora DB cluster in
C<serverless> DB engine mode.

For more information, see Using Amazon Aurora Serverless
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html)
in the I<Amazon Aurora User Guide>.

=head1 ATTRIBUTES


=head2 AutoPause => Bool

  A value that indicates whether automatic pause is allowed for the
Aurora DB cluster in C<serverless> DB engine mode.

When the value is set to false for an Aurora Serverless DB cluster, the
DB cluster automatically resumes.


=head2 MaxCapacity => Int

  The maximum capacity for an Aurora DB cluster in C<serverless> DB
engine mode.


=head2 MinCapacity => Int

  The maximum capacity for the Aurora DB cluster in C<serverless> DB
engine mode.


=head2 SecondsUntilAutoPause => Int

  The remaining amount of time, in seconds, before the Aurora DB cluster
in C<serverless> mode is paused. A DB cluster can be paused only when
it's idle (it has no connections).


=head2 TimeoutAction => Str

  The timeout action of a call to C<ModifyCurrentDBClusterCapacity>,
either C<ForceApplyCapacityChange> or C<RollbackCapacityChange>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

