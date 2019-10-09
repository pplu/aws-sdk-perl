package Paws::S3::Tagging;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::S3::Types qw/S3_Tag/;
  has TagSet => (is => 'ro', isa => ArrayRef[S3_Tag], required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TagSet' => {
                             'class' => 'Paws::S3::Tag',
                             'type' => 'ArrayRef[S3_Tag]'
                           }
             },
  'NameInRequest' => {
                       'TagSet' => 'Tag'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::Tagging

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::Tagging object:

  $service_obj->Method(Att1 => { TagSet => $value, ..., TagSet => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::Tagging object:

  $result = $service_obj->Method(...);
  $result->Att1->TagSet

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 B<REQUIRED> TagSet => ArrayRef[S3_Tag]

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

