# Generated from default/object.tt
package Paws::ECR::DescribeImagesFilter;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ECR::Types qw//;
  has TagStatus => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TagStatus' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'TagStatus' => 'tagStatus'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::DescribeImagesFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECR::DescribeImagesFilter object:

  $service_obj->Method(Att1 => { TagStatus => $value, ..., TagStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECR::DescribeImagesFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->TagStatus

=head1 DESCRIPTION

An object representing a filter on a DescribeImages operation.

=head1 ATTRIBUTES


=head2 TagStatus => Str

  The tag status with which to filter your DescribeImages results. You
can filter results based on whether they are C<TAGGED> or C<UNTAGGED>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

