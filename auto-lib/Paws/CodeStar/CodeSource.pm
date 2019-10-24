# Generated from default/object.tt
package Paws::CodeStar::CodeSource;
  use Moo;
  use Types::Standard qw//;
  use Paws::CodeStar::Types qw/CodeStar_S3Location/;
  has S3 => (is => 'ro', isa => CodeStar_S3Location, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'S3' => {
                         'class' => 'Paws::CodeStar::S3Location',
                         'type' => 'CodeStar_S3Location'
                       }
             },
  'NameInRequest' => {
                       'S3' => 's3'
                     },
  'IsRequired' => {
                    'S3' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::CodeSource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeStar::CodeSource object:

  $service_obj->Method(Att1 => { S3 => $value, ..., S3 => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeStar::CodeSource object:

  $result = $service_obj->Method(...);
  $result->Att1->S3

=head1 DESCRIPTION

The location where the source code files provided with the project
request are stored. AWS CodeStar retrieves the files during project
creation.

=head1 ATTRIBUTES


=head2 B<REQUIRED> S3 => CodeStar_S3Location

  Information about the Amazon S3 location where the source code files
provided with the project request are stored.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeStar>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

