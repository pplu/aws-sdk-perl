package Paws::Signer::HashAlgorithmOptions;
  use Moose;
  has AllowedValues => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'allowedValues', traits => ['NameInRequest'], required => 1);
  has DefaultValue => (is => 'ro', isa => 'Str', request_name => 'defaultValue', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Signer::HashAlgorithmOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Signer::HashAlgorithmOptions object:

  $service_obj->Method(Att1 => { AllowedValues => $value, ..., DefaultValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Signer::HashAlgorithmOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->AllowedValues

=head1 DESCRIPTION

The hash algorithms that are available to an AWS Signer job.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AllowedValues => ArrayRef[Str|Undef]

  The set of accepted hash algorithms allowed in an AWS Signer job.


=head2 B<REQUIRED> DefaultValue => Str

  The default hash algorithm that is used in an AWS Signer job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Signer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

