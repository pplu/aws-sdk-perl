# Generated from default/object.tt
package Paws::LakeFormation::Resource;
  use Moo;
  use Types::Standard qw//;
  use Paws::LakeFormation::Types qw/LakeFormation_TableWithColumnsResource LakeFormation_DatabaseResource LakeFormation_DataLocationResource LakeFormation_TableResource LakeFormation_CatalogResource/;
  has Catalog => (is => 'ro', isa => LakeFormation_CatalogResource);
  has Database => (is => 'ro', isa => LakeFormation_DatabaseResource);
  has DataLocation => (is => 'ro', isa => LakeFormation_DataLocationResource);
  has Table => (is => 'ro', isa => LakeFormation_TableResource);
  has TableWithColumns => (is => 'ro', isa => LakeFormation_TableWithColumnsResource);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Table' => {
                            'class' => 'Paws::LakeFormation::TableResource',
                            'type' => 'LakeFormation_TableResource'
                          },
               'Database' => {
                               'class' => 'Paws::LakeFormation::DatabaseResource',
                               'type' => 'LakeFormation_DatabaseResource'
                             },
               'TableWithColumns' => {
                                       'class' => 'Paws::LakeFormation::TableWithColumnsResource',
                                       'type' => 'LakeFormation_TableWithColumnsResource'
                                     },
               'DataLocation' => {
                                   'type' => 'LakeFormation_DataLocationResource',
                                   'class' => 'Paws::LakeFormation::DataLocationResource'
                                 },
               'Catalog' => {
                              'class' => 'Paws::LakeFormation::CatalogResource',
                              'type' => 'LakeFormation_CatalogResource'
                            }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::Resource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LakeFormation::Resource object:

  $service_obj->Method(Att1 => { Catalog => $value, ..., TableWithColumns => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LakeFormation::Resource object:

  $result = $service_obj->Method(...);
  $result->Att1->Catalog

=head1 DESCRIPTION

A structure for the resource.

=head1 ATTRIBUTES


=head2 Catalog => LakeFormation_CatalogResource

  The identifier for the Data Catalog. By default, the account ID. The
Data Catalog is the persistent metadata store. It contains database
definitions, table definitions, and other control information to manage
your AWS Lake Formation environment.


=head2 Database => LakeFormation_DatabaseResource

  The database for the resource. Unique to the Data Catalog. A database
is a set of associated table definitions organized into a logical
group. You can Grant and Revoke database permissions to a principal.


=head2 DataLocation => LakeFormation_DataLocationResource

  The location of an Amazon S3 path where permissions are granted or
revoked.


=head2 Table => LakeFormation_TableResource

  The table for the resource. A table is a metadata definition that
represents your data. You can Grant and Revoke table privileges to a
principal.


=head2 TableWithColumns => LakeFormation_TableWithColumnsResource

  The table with columns for the resource. A principal with permissions
to this resource can select metadata from the columns of a table in the
Data Catalog and the underlying data in Amazon S3.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

