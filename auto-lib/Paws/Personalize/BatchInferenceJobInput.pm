# Generated by default/object.tt
package Paws::Personalize::BatchInferenceJobInput;
  use Moose;
  has S3DataSource => (is => 'ro', isa => 'Paws::Personalize::S3DataConfig', request_name => 's3DataSource', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::BatchInferenceJobInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Personalize::BatchInferenceJobInput object:

  $service_obj->Method(Att1 => { S3DataSource => $value, ..., S3DataSource => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Personalize::BatchInferenceJobInput object:

  $result = $service_obj->Method(...);
  $result->Att1->S3DataSource

=head1 DESCRIPTION

The input configuration of a batch inference job.

=head1 ATTRIBUTES


=head2 B<REQUIRED> S3DataSource => L<Paws::Personalize::S3DataConfig>

The URI of the Amazon S3 location that contains your input data. The
Amazon S3 bucket must be in the same region as the API endpoint you are
calling.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

