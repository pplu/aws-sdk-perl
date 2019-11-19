# Generated from default/object.tt
package Paws::DocDB::DBClusterSnapshotAttributesResult;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::DocDB::Types qw/DocDB_DBClusterSnapshotAttribute/;
  has DBClusterSnapshotAttributes => (is => 'ro', isa => ArrayRef[DocDB_DBClusterSnapshotAttribute]);
  has DBClusterSnapshotIdentifier => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DBClusterSnapshotIdentifier' => {
                                                  'type' => 'Str'
                                                },
               'DBClusterSnapshotAttributes' => {
                                                  'class' => 'Paws::DocDB::DBClusterSnapshotAttribute',
                                                  'type' => 'ArrayRef[DocDB_DBClusterSnapshotAttribute]'
                                                }
             },
  'NameInRequest' => {
                       'DBClusterSnapshotAttributes' => 'DBClusterSnapshotAttribute'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::DBClusterSnapshotAttributesResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DocDB::DBClusterSnapshotAttributesResult object:

  $service_obj->Method(Att1 => { DBClusterSnapshotAttributes => $value, ..., DBClusterSnapshotIdentifier => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DocDB::DBClusterSnapshotAttributesResult object:

  $result = $service_obj->Method(...);
  $result->Att1->DBClusterSnapshotAttributes

=head1 DESCRIPTION

Detailed information about the attributes that are associated with a DB
cluster snapshot.

=head1 ATTRIBUTES


=head2 DBClusterSnapshotAttributes => ArrayRef[DocDB_DBClusterSnapshotAttribute]

  The list of attributes and values for the DB cluster snapshot.


=head2 DBClusterSnapshotIdentifier => Str

  The identifier of the DB cluster snapshot that the attributes apply to.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DocDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

