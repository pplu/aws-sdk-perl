# Generated by default/object.tt
package Paws::Macie2::S3BucketDefinitionForJob;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', request_name => 'accountId', traits => ['NameInRequest'], required => 1);
  has Buckets => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'buckets', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::S3BucketDefinitionForJob

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Macie2::S3BucketDefinitionForJob object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., Buckets => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Macie2::S3BucketDefinitionForJob object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

Specifies an Amazon Web Services account that owns S3 buckets for a
classification job to analyze, and one or more specific buckets to
analyze for that account.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The unique identifier for the Amazon Web Services account that owns the
buckets.


=head2 B<REQUIRED> Buckets => ArrayRef[Str|Undef]

An array that lists the names of the buckets.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

