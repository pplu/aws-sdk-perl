# Generated from default/object.tt
package Paws::RedShift::ClusterParameterGroupStatus;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::RedShift::Types qw/RedShift_ClusterParameterStatus/;
  has ClusterParameterStatusList => (is => 'ro', isa => ArrayRef[RedShift_ClusterParameterStatus]);
  has ParameterApplyStatus => (is => 'ro', isa => Str);
  has ParameterGroupName => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ParameterApplyStatus' => {
                                           'type' => 'Str'
                                         },
               'ParameterGroupName' => {
                                         'type' => 'Str'
                                       },
               'ClusterParameterStatusList' => {
                                                 'type' => 'ArrayRef[RedShift_ClusterParameterStatus]',
                                                 'class' => 'Paws::RedShift::ClusterParameterStatus'
                                               }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::ClusterParameterGroupStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedShift::ClusterParameterGroupStatus object:

  $service_obj->Method(Att1 => { ClusterParameterStatusList => $value, ..., ParameterGroupName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedShift::ClusterParameterGroupStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->ClusterParameterStatusList

=head1 DESCRIPTION

Describes the status of a parameter group.

=head1 ATTRIBUTES


=head2 ClusterParameterStatusList => ArrayRef[RedShift_ClusterParameterStatus]

  The list of parameter statuses.

For more information about parameters and parameter groups, go to
Amazon Redshift Parameter Groups
(https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html)
in the I<Amazon Redshift Cluster Management Guide>.


=head2 ParameterApplyStatus => Str

  The status of parameter updates.


=head2 ParameterGroupName => Str

  The name of the cluster parameter group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

