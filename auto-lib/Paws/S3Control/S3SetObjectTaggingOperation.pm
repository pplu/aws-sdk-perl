# Generated from default/object.tt
package Paws::S3Control::S3SetObjectTaggingOperation;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::S3Control::Types qw/S3Control_S3Tag/;
  has TagSet => (is => 'ro', isa => ArrayRef[S3Control_S3Tag]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TagSet' => {
                             'class' => 'Paws::S3Control::S3Tag',
                             'type' => 'ArrayRef[S3Control_S3Tag]'
                           }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::S3SetObjectTaggingOperation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3Control::S3SetObjectTaggingOperation object:

  $service_obj->Method(Att1 => { TagSet => $value, ..., TagSet => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3Control::S3SetObjectTaggingOperation object:

  $result = $service_obj->Method(...);
  $result->Att1->TagSet

=head1 DESCRIPTION

Contains the configuration parameters for a Set Object Tagging
operation. Amazon S3 batch operations passes each value through to the
underlying PUT Object tagging API. For more information about the
parameters for this operation, see PUT Object tagging
(https://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectPUTtagging.html).

=head1 ATTRIBUTES


=head2 TagSet => ArrayRef[S3Control_S3Tag]

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

