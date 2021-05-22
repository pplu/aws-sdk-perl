
package Paws::CloudFront::CreateKeyGroup;
  use Moose;
  has KeyGroupConfig => (is => 'ro', isa => 'Paws::CloudFront::KeyGroupConfig', traits => ['ParamInBody'], required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateKeyGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-05-31/key-group');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::CreateKeyGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CreateKeyGroup - Arguments for method CreateKeyGroup on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateKeyGroup2020_05_31 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method CreateKeyGroup2020_05_31.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateKeyGroup2020_05_31.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $CreateKeyGroupResult = $cloudfront->CreateKeyGroup(
      KeyGroupConfig => {
        Items   => [ 'Mystring', ... ],
        Name    => 'Mystring',
        Comment => 'Mystring',
      },

    );

    # Results:
    my $ETag     = $CreateKeyGroupResult->ETag;
    my $KeyGroup = $CreateKeyGroupResult->KeyGroup;
    my $Location = $CreateKeyGroupResult->Location;

    # Returns a L<Paws::CloudFront::CreateKeyGroupResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/CreateKeyGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> KeyGroupConfig => L<Paws::CloudFront::KeyGroupConfig>

A key group configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateKeyGroup2020_05_31 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

