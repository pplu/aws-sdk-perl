# Generated from default/object.tt
package Paws::S3::ProgressEvent;
  use Moo;
  use Types::Standard qw//;
  use Paws::S3::Types qw/S3_Progress/;
  has Details => (is => 'ro', isa => S3_Progress);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Details' => {
                              'class' => 'Paws::S3::Progress',
                              'type' => 'S3_Progress'
                            }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::ProgressEvent

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::ProgressEvent object:

  $service_obj->Method(Att1 => { Details => $value, ..., Details => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::ProgressEvent object:

  $result = $service_obj->Method(...);
  $result->Att1->Details

=head1 DESCRIPTION

This data type contains information about the progress event of an
operation.

=head1 ATTRIBUTES


=head2 Details => S3_Progress

  The Progress event details.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

