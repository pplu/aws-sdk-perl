package Paws::DynamoDB::AutoScalingPolicyUpdate;
  use Moo;
  use Types::Standard qw/Str/;
  use Type::Utils qw/class_type/;
    my $AutoScalingTargetTrackingScalingPolicyConfigurationUpdate = class_type 'Paws::DynamoDB::AutoScalingTargetTrackingScalingPolicyConfigurationUpdate';
  
  has PolicyName => (is => 'ro', isa => Str);
  has TargetTrackingScalingPolicyConfiguration => (is => 'ro', isa => $AutoScalingTargetTrackingScalingPolicyConfigurationUpdate, required => 1);

  sub params_map {
    my $params1 = {
             'types' => {
                          'TargetTrackingScalingPolicyConfiguration' => {
                                                                          'class' => 'Paws::DynamoDB::AutoScalingTargetTrackingScalingPolicyConfigurationUpdate',
                                                                          'type' => '$AutoScalingTargetTrackingScalingPolicyConfigurationUpdate'
                                                                        },
                          'PolicyName' => {
                                            'type' => 'Str'
                                          }
                        }
           };

    return $params1;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::AutoScalingPolicyUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::AutoScalingPolicyUpdate object:

  $service_obj->Method(Att1 => { PolicyName => $value, ..., TargetTrackingScalingPolicyConfiguration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::AutoScalingPolicyUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->PolicyName

=head1 DESCRIPTION

Represents the autoscaling policy to be modified.

=head1 ATTRIBUTES


=head2 PolicyName => Str

  The name of the scaling policy.


=head2 B<REQUIRED> TargetTrackingScalingPolicyConfiguration => $AutoScalingTargetTrackingScalingPolicyConfigurationUpdate

  Represents a target tracking scaling policy configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

