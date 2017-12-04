package Paws::AppStream::ImageBuilder;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreatedTime => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str');
  has DomainJoinInfo => (is => 'ro', isa => 'Paws::AppStream::DomainJoinInfo');
  has EnableDefaultInternetAccess => (is => 'ro', isa => 'Bool');
  has ImageArn => (is => 'ro', isa => 'Str');
  has ImageBuilderErrors => (is => 'ro', isa => 'ArrayRef[Paws::AppStream::ResourceError]');
  has InstanceType => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Platform => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has StateChangeReason => (is => 'ro', isa => 'Paws::AppStream::ImageBuilderStateChangeReason');
  has VpcConfig => (is => 'ro', isa => 'Paws::AppStream::VpcConfig');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::ImageBuilder

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppStream::ImageBuilder object:

  $service_obj->Method(Att1 => { Arn => $value, ..., VpcConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppStream::ImageBuilder object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Arn => Str

  


=head2 CreatedTime => Str

  


=head2 Description => Str

  


=head2 DisplayName => Str

  


=head2 DomainJoinInfo => L<Paws::AppStream::DomainJoinInfo>

  


=head2 EnableDefaultInternetAccess => Bool

  


=head2 ImageArn => Str

  


=head2 ImageBuilderErrors => ArrayRef[L<Paws::AppStream::ResourceError>]

  


=head2 InstanceType => Str

  


=head2 B<REQUIRED> Name => Str

  


=head2 Platform => Str

  


=head2 State => Str

  


=head2 StateChangeReason => L<Paws::AppStream::ImageBuilderStateChangeReason>

  


=head2 VpcConfig => L<Paws::AppStream::VpcConfig>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

