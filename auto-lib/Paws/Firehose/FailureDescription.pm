package Paws::Firehose::FailureDescription;
  use Moose;
  has Details => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::FailureDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Firehose::FailureDescription object:

  $service_obj->Method(Att1 => { Details => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Firehose::FailureDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->Details

=head1 DESCRIPTION

Provides details in case one of the following operations fails due to
an error related to KMS: CreateDeliveryStream, DeleteDeliveryStream,
StartDeliveryStreamEncryption, StopDeliveryStreamEncryption.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Details => Str

  A message providing details about the error that caused the failure.


=head2 B<REQUIRED> Type => Str

  The type of error that caused the failure.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

