package Paws::CodePipeline::EncryptionKey;
  use Moose;
  has id => (is => 'ro', isa => 'Str', required => 1);
  has type => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::EncryptionKey

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::EncryptionKey object:

  $service_obj->Method(Att1 => { id => $value, ..., type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::EncryptionKey object:

  $result = $service_obj->Method(...);
  $result->Att1->id

=head1 ATTRIBUTES

=head2 B<REQUIRED> id => Str

  The ID of the AWS KMS key.

=head2 B<REQUIRED> type => Str

  The type of AWS KMS key, such as a customer master key.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

