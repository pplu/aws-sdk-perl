package Paws::ECR::LifecyclePolicyPreviewSummary;
  use Moose;
  has ExpiringImageTotalCount => (is => 'ro', isa => 'Int', request_name => 'expiringImageTotalCount', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::LifecyclePolicyPreviewSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECR::LifecyclePolicyPreviewSummary object:

  $service_obj->Method(Att1 => { ExpiringImageTotalCount => $value, ..., ExpiringImageTotalCount => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECR::LifecyclePolicyPreviewSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->ExpiringImageTotalCount

=head1 DESCRIPTION

The summary of the lifecycle policy preview request.

=head1 ATTRIBUTES


=head2 ExpiringImageTotalCount => Int

  The number of expiring images.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

