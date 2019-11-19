# Generated from default/object.tt
package Paws::Route53::ResourceTagSet;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Route53::Types qw/Route53_Tag/;
  has ResourceId => (is => 'ro', isa => Str);
  has ResourceType => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[Route53_Tag]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceType' => {
                                   'type' => 'Str'
                                 },
               'Tags' => {
                           'type' => 'ArrayRef[Route53_Tag]',
                           'class' => 'Paws::Route53::Tag'
                         },
               'ResourceId' => {
                                 'type' => 'Str'
                               }
             },
  'NameInRequest' => {
                       'Tags' => 'Tag'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ResourceTagSet

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53::ResourceTagSet object:

  $service_obj->Method(Att1 => { ResourceId => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53::ResourceTagSet object:

  $result = $service_obj->Method(...);
  $result->Att1->ResourceId

=head1 DESCRIPTION

A complex type containing a resource and its associated tags.

=head1 ATTRIBUTES


=head2 ResourceId => Str

  The ID for the specified resource.


=head2 ResourceType => Str

  The type of the resource.

=over

=item *

The resource type for health checks is C<healthcheck>.

=item *

The resource type for hosted zones is C<hostedzone>.

=back



=head2 Tags => ArrayRef[Route53_Tag]

  The tags associated with the specified resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

