package Paws::Config::AccountAggregationSource;
  use Moose;
  has AccountIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has AllAwsRegions => (is => 'ro', isa => 'Bool');
  has AwsRegions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::AccountAggregationSource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::AccountAggregationSource object:

  $service_obj->Method(Att1 => { AccountIds => $value, ..., AwsRegions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::AccountAggregationSource object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountIds

=head1 DESCRIPTION

A collection of accounts and regions.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountIds => ArrayRef[Str|Undef]

  The 12-digit account ID of the account being aggregated.


=head2 AllAwsRegions => Bool

  If true, aggregate existing AWS Config regions and future regions.


=head2 AwsRegions => ArrayRef[Str|Undef]

  The source regions being aggregated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

