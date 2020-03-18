package Paws::SageMaker::DomainDetails;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has DomainArn => (is => 'ro', isa => 'Str');
  has DomainId => (is => 'ro', isa => 'Str');
  has DomainName => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has Url => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DomainDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::DomainDetails object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., Url => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::DomainDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

The domain's details.

=head1 ATTRIBUTES


=head2 CreationTime => Str

  The creation time.


=head2 DomainArn => Str

  The domain's Amazon Resource Name (ARN).


=head2 DomainId => Str

  The domain ID.


=head2 DomainName => Str

  The domain name.


=head2 LastModifiedTime => Str

  The last modified time.


=head2 Status => Str

  The status.


=head2 Url => Str

  The domain's URL.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

