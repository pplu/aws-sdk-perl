# Generated from default/object.tt
package Paws::Personalize::BatchInferenceJobOutput;
  use Moo;
  use Types::Standard qw//;
  use Paws::Personalize::Types qw/Personalize_S3DataConfig/;
  has S3DataDestination => (is => 'ro', isa => Personalize_S3DataConfig, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'S3DataDestination' => {
                                        'type' => 'Personalize_S3DataConfig',
                                        'class' => 'Paws::Personalize::S3DataConfig'
                                      }
             },
  'NameInRequest' => {
                       'S3DataDestination' => 's3DataDestination'
                     },
  'IsRequired' => {
                    'S3DataDestination' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::BatchInferenceJobOutput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Personalize::BatchInferenceJobOutput object:

  $service_obj->Method(Att1 => { S3DataDestination => $value, ..., S3DataDestination => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Personalize::BatchInferenceJobOutput object:

  $result = $service_obj->Method(...);
  $result->Att1->S3DataDestination

=head1 DESCRIPTION

The output configuration parameters of a batch inference job.

=head1 ATTRIBUTES


=head2 B<REQUIRED> S3DataDestination => Personalize_S3DataConfig

  Information on the Amazon S3 bucket in which the batch inference job's
output is stored.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

