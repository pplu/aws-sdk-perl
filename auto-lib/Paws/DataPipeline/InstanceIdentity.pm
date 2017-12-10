package Paws::DataPipeline::InstanceIdentity;
  use Moose;
  has Document => (is => 'ro', isa => 'Str', request_name => 'document', traits => ['NameInRequest']);
  has Signature => (is => 'ro', isa => 'Str', request_name => 'signature', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::InstanceIdentity

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DataPipeline::InstanceIdentity object:

  $service_obj->Method(Att1 => { Document => $value, ..., Signature => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DataPipeline::InstanceIdentity object:

  $result = $service_obj->Method(...);
  $result->Att1->Document

=head1 DESCRIPTION

Identity information for the EC2 instance that is hosting the task
runner. You can get this value by calling a metadata URI from the EC2
instance. For more information, see Instance Metadata
(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AESDG-chapter-instancedata.html)
in the I<Amazon Elastic Compute Cloud User Guide.> Passing in this
value proves that your task runner is running on an EC2 instance, and
ensures the proper AWS Data Pipeline service charges are applied to
your pipeline.

=head1 ATTRIBUTES


=head2 Document => Str

  A description of an EC2 instance that is generated when the instance is
launched and exposed to the instance via the instance metadata service
in the form of a JSON representation of an object.


=head2 Signature => Str

  A signature which can be used to verify the accuracy and authenticity
of the information provided in the instance identity document.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DataPipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

