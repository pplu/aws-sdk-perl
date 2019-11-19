# Generated from default/object.tt
package Paws::AppMesh::HeaderMatchMethod;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AppMesh::Types qw/AppMesh_MatchRange/;
  has Exact => (is => 'ro', isa => Str);
  has Prefix => (is => 'ro', isa => Str);
  has Range => (is => 'ro', isa => AppMesh_MatchRange);
  has Regex => (is => 'ro', isa => Str);
  has Suffix => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Regex' => 'regex',
                       'Exact' => 'exact',
                       'Suffix' => 'suffix',
                       'Prefix' => 'prefix',
                       'Range' => 'range'
                     },
  'types' => {
               'Prefix' => {
                             'type' => 'Str'
                           },
               'Range' => {
                            'type' => 'AppMesh_MatchRange',
                            'class' => 'Paws::AppMesh::MatchRange'
                          },
               'Regex' => {
                            'type' => 'Str'
                          },
               'Exact' => {
                            'type' => 'Str'
                          },
               'Suffix' => {
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

Paws::AppMesh::HeaderMatchMethod

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::HeaderMatchMethod object:

  $service_obj->Method(Att1 => { Exact => $value, ..., Suffix => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::HeaderMatchMethod object:

  $result = $service_obj->Method(...);
  $result->Att1->Exact

=head1 DESCRIPTION

An object that represents the method and value to match with the header
value sent in a request. Specify one match method.

=head1 ATTRIBUTES


=head2 Exact => Str

  The value sent by the client must match the specified value exactly.


=head2 Prefix => Str

  The value sent by the client must begin with the specified characters.


=head2 Range => AppMesh_MatchRange

  An object that represents the range of values to match on.


=head2 Regex => Str

  The value sent by the client must include the specified characters.


=head2 Suffix => Str

  The value sent by the client must end with the specified characters.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

