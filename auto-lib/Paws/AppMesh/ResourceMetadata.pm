# Generated from default/object.tt
package Paws::AppMesh::ResourceMetadata;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::AppMesh::Types qw//;
  has Arn => (is => 'ro', isa => Str, required => 1);
  has CreatedAt => (is => 'ro', isa => Str, required => 1);
  has LastUpdatedAt => (is => 'ro', isa => Str, required => 1);
  has Uid => (is => 'ro', isa => Str, required => 1);
  has Version => (is => 'ro', isa => Int, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Version' => {
                              'type' => 'Int'
                            },
               'CreatedAt' => {
                                'type' => 'Str'
                              },
               'LastUpdatedAt' => {
                                    'type' => 'Str'
                                  },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Uid' => {
                          'type' => 'Str'
                        }
             },
  'NameInRequest' => {
                       'Version' => 'version',
                       'CreatedAt' => 'createdAt',
                       'LastUpdatedAt' => 'lastUpdatedAt',
                       'Arn' => 'arn',
                       'Uid' => 'uid'
                     },
  'IsRequired' => {
                    'Version' => 1,
                    'CreatedAt' => 1,
                    'LastUpdatedAt' => 1,
                    'Arn' => 1,
                    'Uid' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::ResourceMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::ResourceMetadata object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::ResourceMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

An object representing metadata for a resource.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

  The full Amazon Resource Name (ARN) for the resource.


=head2 B<REQUIRED> CreatedAt => Str

  The Unix epoch timestamp in seconds for when the resource was created.


=head2 B<REQUIRED> LastUpdatedAt => Str

  The Unix epoch timestamp in seconds for when the resource was last
updated.


=head2 B<REQUIRED> Uid => Str

  The unique identifier for the resource.


=head2 B<REQUIRED> Version => Int

  The version of the resource. Resources are created at version 1, and
this version is incremented each time that they're updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

