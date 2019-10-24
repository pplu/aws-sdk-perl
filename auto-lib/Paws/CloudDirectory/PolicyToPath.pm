# Generated from default/object.tt
package Paws::CloudDirectory::PolicyToPath;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudDirectory::Types qw/CloudDirectory_PolicyAttachment/;
  has Path => (is => 'ro', isa => Str);
  has Policies => (is => 'ro', isa => ArrayRef[CloudDirectory_PolicyAttachment]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Policies' => {
                               'class' => 'Paws::CloudDirectory::PolicyAttachment',
                               'type' => 'ArrayRef[CloudDirectory_PolicyAttachment]'
                             },
               'Path' => {
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

Paws::CloudDirectory::PolicyToPath

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::PolicyToPath object:

  $service_obj->Method(Att1 => { Path => $value, ..., Policies => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::PolicyToPath object:

  $result = $service_obj->Method(...);
  $result->Att1->Path

=head1 DESCRIPTION

Used when a regular object exists in a Directory and you want to find
all of the policies that are associated with that object and the parent
to that object.

=head1 ATTRIBUTES


=head2 Path => Str

  The path that is referenced from the root.


=head2 Policies => ArrayRef[CloudDirectory_PolicyAttachment]

  List of policy objects.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

