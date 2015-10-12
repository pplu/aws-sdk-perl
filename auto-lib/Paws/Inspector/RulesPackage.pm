package Paws::Inspector::RulesPackage;
  use Moose;
  has description => (is => 'ro', isa => 'Paws::Inspector::LocalizedText');
  has provider => (is => 'ro', isa => 'Str');
  has rulesPackageArn => (is => 'ro', isa => 'Str');
  has rulesPackageName => (is => 'ro', isa => 'Str');
  has version => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::RulesPackage

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Inspector::RulesPackage object:

  $service_obj->Method(Att1 => { description => $value, ..., version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector::RulesPackage object:

  $result = $service_obj->Method(...);
  $result->Att1->description

=head1 ATTRIBUTES

=head2 description => Paws::Inspector::LocalizedText

  The description of the rules package.

=head2 provider => Str

  The provider of the rules package.

=head2 rulesPackageArn => Str

  The ARN of the rules package.

=head2 rulesPackageName => Str

  The name of the rules package.

=head2 version => Str

  The version id of the rules package.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

