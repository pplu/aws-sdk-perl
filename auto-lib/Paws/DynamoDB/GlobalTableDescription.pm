# Generated from default/object.tt
package Paws::DynamoDB::GlobalTableDescription;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DynamoDB::Types qw/DynamoDB_ReplicaDescription/;
  has CreationDateTime => (is => 'ro', isa => Str);
  has GlobalTableArn => (is => 'ro', isa => Str);
  has GlobalTableName => (is => 'ro', isa => Str);
  has GlobalTableStatus => (is => 'ro', isa => Str);
  has ReplicationGroup => (is => 'ro', isa => ArrayRef[DynamoDB_ReplicaDescription]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ReplicationGroup' => {
                                       'class' => 'Paws::DynamoDB::ReplicaDescription',
                                       'type' => 'ArrayRef[DynamoDB_ReplicaDescription]'
                                     },
               'GlobalTableStatus' => {
                                        'type' => 'Str'
                                      },
               'GlobalTableArn' => {
                                     'type' => 'Str'
                                   },
               'CreationDateTime' => {
                                       'type' => 'Str'
                                     },
               'GlobalTableName' => {
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

Paws::DynamoDB::GlobalTableDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::GlobalTableDescription object:

  $service_obj->Method(Att1 => { CreationDateTime => $value, ..., ReplicationGroup => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::GlobalTableDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationDateTime

=head1 DESCRIPTION

Contains details about the global table.

=head1 ATTRIBUTES


=head2 CreationDateTime => Str

  The creation time of the global table.


=head2 GlobalTableArn => Str

  The unique identifier of the global table.


=head2 GlobalTableName => Str

  The global table name.


=head2 GlobalTableStatus => Str

  The current state of the global table:

=over

=item *

C<CREATING> - The global table is being created.

=item *

C<UPDATING> - The global table is being updated.

=item *

C<DELETING> - The global table is being deleted.

=item *

C<ACTIVE> - The global table is ready for use.

=back



=head2 ReplicationGroup => ArrayRef[DynamoDB_ReplicaDescription]

  The regions where the global table has replicas.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

