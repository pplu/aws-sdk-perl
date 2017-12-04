package Paws::CloudFront::Invalidation;
  use Moose;
  has CreateTime => (is => 'ro', isa => 'Str', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has InvalidationBatch => (is => 'ro', isa => 'Paws::CloudFront::InvalidationBatch', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::Invalidation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::Invalidation object:

  $service_obj->Method(Att1 => { CreateTime => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::Invalidation object:

  $result = $service_obj->Method(...);
  $result->Att1->CreateTime

=head1 DESCRIPTION

An invalidation.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreateTime => Str

  The date and time the invalidation request was first made.


=head2 B<REQUIRED> Id => Str

  The identifier for the invalidation request. For example:
C<IDFDVBD632BHDS5>.


=head2 B<REQUIRED> InvalidationBatch => L<Paws::CloudFront::InvalidationBatch>

  The current invalidation information for the batch request.


=head2 B<REQUIRED> Status => Str

  The status of the invalidation request. When the invalidation batch is
finished, the status is C<Completed>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

