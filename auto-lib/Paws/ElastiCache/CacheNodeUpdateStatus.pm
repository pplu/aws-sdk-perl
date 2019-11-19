# Generated from default/object.tt
package Paws::ElastiCache::CacheNodeUpdateStatus;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ElastiCache::Types qw//;
  has CacheNodeId => (is => 'ro', isa => Str);
  has NodeDeletionDate => (is => 'ro', isa => Str);
  has NodeUpdateEndDate => (is => 'ro', isa => Str);
  has NodeUpdateInitiatedBy => (is => 'ro', isa => Str);
  has NodeUpdateInitiatedDate => (is => 'ro', isa => Str);
  has NodeUpdateStartDate => (is => 'ro', isa => Str);
  has NodeUpdateStatus => (is => 'ro', isa => Str);
  has NodeUpdateStatusModifiedDate => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NodeUpdateStatus' => {
                                       'type' => 'Str'
                                     },
               'NodeDeletionDate' => {
                                       'type' => 'Str'
                                     },
               'NodeUpdateStartDate' => {
                                          'type' => 'Str'
                                        },
               'NodeUpdateInitiatedDate' => {
                                              'type' => 'Str'
                                            },
               'NodeUpdateEndDate' => {
                                        'type' => 'Str'
                                      },
               'CacheNodeId' => {
                                  'type' => 'Str'
                                },
               'NodeUpdateInitiatedBy' => {
                                            'type' => 'Str'
                                          },
               'NodeUpdateStatusModifiedDate' => {
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

Paws::ElastiCache::CacheNodeUpdateStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElastiCache::CacheNodeUpdateStatus object:

  $service_obj->Method(Att1 => { CacheNodeId => $value, ..., NodeUpdateStatusModifiedDate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElastiCache::CacheNodeUpdateStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->CacheNodeId

=head1 DESCRIPTION

The status of the service update on the cache node

=head1 ATTRIBUTES


=head2 CacheNodeId => Str

  The node ID of the cache cluster


=head2 NodeDeletionDate => Str

  The deletion date of the node


=head2 NodeUpdateEndDate => Str

  The end date of the update for a node


=head2 NodeUpdateInitiatedBy => Str

  Reflects whether the update was initiated by the customer or
automatically applied


=head2 NodeUpdateInitiatedDate => Str

  The date when the update is triggered


=head2 NodeUpdateStartDate => Str

  The start date of the update for a node


=head2 NodeUpdateStatus => Str

  The update status of the node


=head2 NodeUpdateStatusModifiedDate => Str

  The date when the NodeUpdateStatus was last modifiedE<gt>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

