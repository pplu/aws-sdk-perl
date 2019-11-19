# Generated from default/object.tt
package Paws::Glue::GlueTable;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw//;
  has CatalogId => (is => 'ro', isa => Str);
  has ConnectionName => (is => 'ro', isa => Str);
  has DatabaseName => (is => 'ro', isa => Str, required => 1);
  has TableName => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DatabaseName' => {
                                   'type' => 'Str'
                                 },
               'ConnectionName' => {
                                     'type' => 'Str'
                                   },
               'TableName' => {
                                'type' => 'Str'
                              },
               'CatalogId' => {
                                'type' => 'Str'
                              }
             },
  'IsRequired' => {
                    'DatabaseName' => 1,
                    'TableName' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GlueTable

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::GlueTable object:

  $service_obj->Method(Att1 => { CatalogId => $value, ..., TableName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::GlueTable object:

  $result = $service_obj->Method(...);
  $result->Att1->CatalogId

=head1 DESCRIPTION

The database and table in the AWS Glue Data Catalog that is used for
input or output data.

=head1 ATTRIBUTES


=head2 CatalogId => Str

  A unique identifier for the AWS Glue Data Catalog.


=head2 ConnectionName => Str

  The name of the connection to the AWS Glue Data Catalog.


=head2 B<REQUIRED> DatabaseName => Str

  A database name in the AWS Glue Data Catalog.


=head2 B<REQUIRED> TableName => Str

  A table name in the AWS Glue Data Catalog.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

