# Generated from default/object.tt
package Paws::ElastiCache::UpdateAction;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ElastiCache::Types qw/ElastiCache_NodeGroupUpdateStatus/;
  has EstimatedUpdateTime => (is => 'ro', isa => Str);
  has NodeGroupUpdateStatus => (is => 'ro', isa => ArrayRef[ElastiCache_NodeGroupUpdateStatus]);
  has NodesUpdated => (is => 'ro', isa => Str);
  has ReplicationGroupId => (is => 'ro', isa => Str);
  has ServiceUpdateName => (is => 'ro', isa => Str);
  has ServiceUpdateRecommendedApplyByDate => (is => 'ro', isa => Str);
  has ServiceUpdateReleaseDate => (is => 'ro', isa => Str);
  has ServiceUpdateSeverity => (is => 'ro', isa => Str);
  has ServiceUpdateStatus => (is => 'ro', isa => Str);
  has ServiceUpdateType => (is => 'ro', isa => Str);
  has SlaMet => (is => 'ro', isa => Str);
  has UpdateActionAvailableDate => (is => 'ro', isa => Str);
  has UpdateActionStatus => (is => 'ro', isa => Str);
  has UpdateActionStatusModifiedDate => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'UpdateActionAvailableDate' => {
                                                'type' => 'Str'
                                              },
               'ServiceUpdateSeverity' => {
                                            'type' => 'Str'
                                          },
               'ServiceUpdateRecommendedApplyByDate' => {
                                                          'type' => 'Str'
                                                        },
               'ServiceUpdateStatus' => {
                                          'type' => 'Str'
                                        },
               'NodeGroupUpdateStatus' => {
                                            'class' => 'Paws::ElastiCache::NodeGroupUpdateStatus',
                                            'type' => 'ArrayRef[ElastiCache_NodeGroupUpdateStatus]'
                                          },
               'UpdateActionStatus' => {
                                         'type' => 'Str'
                                       },
               'EstimatedUpdateTime' => {
                                          'type' => 'Str'
                                        },
               'ServiceUpdateType' => {
                                        'type' => 'Str'
                                      },
               'ServiceUpdateName' => {
                                        'type' => 'Str'
                                      },
               'ReplicationGroupId' => {
                                         'type' => 'Str'
                                       },
               'NodesUpdated' => {
                                   'type' => 'Str'
                                 },
               'UpdateActionStatusModifiedDate' => {
                                                     'type' => 'Str'
                                                   },
               'SlaMet' => {
                             'type' => 'Str'
                           },
               'ServiceUpdateReleaseDate' => {
                                               'type' => 'Str'
                                             }
             },
  'NameInRequest' => {
                       'NodeGroupUpdateStatus' => 'NodeGroupUpdateStatus'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::UpdateAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElastiCache::UpdateAction object:

  $service_obj->Method(Att1 => { EstimatedUpdateTime => $value, ..., UpdateActionStatusModifiedDate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElastiCache::UpdateAction object:

  $result = $service_obj->Method(...);
  $result->Att1->EstimatedUpdateTime

=head1 DESCRIPTION

The status of the service update for a specific replication group

=head1 ATTRIBUTES


=head2 EstimatedUpdateTime => Str

  The estimated length of time for the update to complete


=head2 NodeGroupUpdateStatus => ArrayRef[ElastiCache_NodeGroupUpdateStatus]

  The status of the service update on the node group


=head2 NodesUpdated => Str

  The progress of the service update on the replication group


=head2 ReplicationGroupId => Str

  The ID of the replication group


=head2 ServiceUpdateName => Str

  The unique ID of the service update


=head2 ServiceUpdateRecommendedApplyByDate => Str

  The recommended date to apply the service update to ensure compliance.
For information on compliance, see Self-Service Security Updates for
Compliance
(https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/elasticache-compliance.html#elasticache-compliance-self-service).


=head2 ServiceUpdateReleaseDate => Str

  The date the update is first available


=head2 ServiceUpdateSeverity => Str

  The severity of the service update


=head2 ServiceUpdateStatus => Str

  The status of the service update


=head2 ServiceUpdateType => Str

  Reflects the nature of the service update


=head2 SlaMet => Str

  If yes, all nodes in the replication group have been updated by the
recommended apply-by date. If no, at least one node in the replication
group have not been updated by the recommended apply-by date. If N/A,
the replication group was created after the recommended apply-by date.


=head2 UpdateActionAvailableDate => Str

  The date that the service update is available to a replication group


=head2 UpdateActionStatus => Str

  The status of the update action


=head2 UpdateActionStatusModifiedDate => Str

  The date when the UpdateActionStatus was last modified



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

