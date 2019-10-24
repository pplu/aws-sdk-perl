# Generated from default/object.tt
package Paws::ELBv2::TagDescription;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ELBv2::Types qw/ELBv2_Tag/;
  has ResourceArn => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[ELBv2_Tag]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceArn' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::ELBv2::Tag',
                           'type' => 'ArrayRef[ELBv2_Tag]'
                         }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::TagDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ELBv2::TagDescription object:

  $service_obj->Method(Att1 => { ResourceArn => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ELBv2::TagDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->ResourceArn

=head1 DESCRIPTION

The tags associated with a resource.

=head1 ATTRIBUTES


=head2 ResourceArn => Str

  The Amazon Resource Name (ARN) of the resource.


=head2 Tags => ArrayRef[ELBv2_Tag]

  Information about the tags.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

